.class Lcom/android/phone/callsettings/GeneralSettingFragment$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/phone/callsettings/GeneralSettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$3;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v1, "vowifi_menu_enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "GeneralSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWFCEnableObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$3;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get9(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment$3;->this$0:Lcom/android/phone/callsettings/GeneralSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->-get9(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
