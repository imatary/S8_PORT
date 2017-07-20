.class Lcom/android/phone/callsettings/GeneralSettingFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "GeneralSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/GeneralSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get5(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get5(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get7(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get7(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get7(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-wrap5(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nsds_service_previous_status"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "nsds_service_new_status"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "GeneralSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEVICE_CONFIG_CHANGED prev : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v1, :cond_0

    const-string/jumbo v3, "GeneralSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEVICE_CONFIG_CHANGED to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment$2$1;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment$2;I)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
