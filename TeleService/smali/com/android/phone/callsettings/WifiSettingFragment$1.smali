.class Lcom/android/phone/callsettings/WifiSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/WifiSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "apntype"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ikeerror"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "WifiSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_IPSEC_CONNECTION_EVENT : apntype["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], ikeerror["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get1(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/WifiSettingFragment;->-wrap1(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/callsettings/WifiSettingFragment;->-set0(Lcom/android/phone/callsettings/WifiSettingFragment;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get4(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SemSwitchPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get1(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment$1;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v3}, Lcom/android/phone/callsettings/WifiSettingFragment;->-wrap1(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    goto :goto_0
.end method
