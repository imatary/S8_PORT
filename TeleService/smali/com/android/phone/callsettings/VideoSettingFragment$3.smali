.class Lcom/android/phone/callsettings/VideoSettingFragment$3;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VideoSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallStateChanged, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$3;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string/jumbo v0, "VideoSettingFragment"

    const-string/jumbo v1, "onServiceStateChanged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method
