.class Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$9;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->createAndShowDialog(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameToolsPreference:Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameToolsPreference:Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameToolsPreference:Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->getSwitch()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$402(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
