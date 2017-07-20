.class Lcom/android/phone/callsettings/VideoSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/VideoSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoSettingFragment$1;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.android.phone.action.ENABLE_VIDEOCALL_TOGGLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "VideoSettingFragment"

    const-string/jumbo v3, "onReceive.. ACTION_ENABLE_VIDEOCALL_TOGGLE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$1;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$1;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$1;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateATTVideoCallSummary()V

    :cond_2
    return-void

    :cond_3
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    const-string/jumbo v2, "VideoSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive.. mVIDEOCALLToggleEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$1;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$1;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
