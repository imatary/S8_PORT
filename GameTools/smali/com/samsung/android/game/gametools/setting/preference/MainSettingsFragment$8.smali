.class Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isGameLauncherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOn(Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->val$mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisclaimerConfirm(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->val$mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    const-string/jumbo v0, "800"

    const-string/jumbo v1, "8004"

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->updateCurrentStatusFromSharedPreference()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$402(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
