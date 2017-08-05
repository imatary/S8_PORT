.class Lcom/android/phone/callsettings/WifiSettingFragment$9;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiSettingFragment;->showWfcOPLDialog()V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment$9;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$9;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get3(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$9;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get3(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$9;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get4(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SemSwitchPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$9;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get4(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SemSwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method
