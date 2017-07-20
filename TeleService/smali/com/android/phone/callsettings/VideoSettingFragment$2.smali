.class Lcom/android/phone/callsettings/VideoSettingFragment$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/phone/callsettings/VideoSettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoSettingFragment$2;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$2;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get3(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$2;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$2;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get3(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment$2;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->-get2(Lcom/android/phone/callsettings/VideoSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/VideoSettingUtils;->canEnablevolteVideoCall(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$2;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoSettingFragment;->-wrap1(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    goto :goto_1
.end method
