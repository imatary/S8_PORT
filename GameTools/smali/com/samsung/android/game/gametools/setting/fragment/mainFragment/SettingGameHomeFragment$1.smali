.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;
.super Ljava/lang/Object;
.source "SettingGameHomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateLauncherDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    const-string/jumbo v0, "801"

    const-string/jumbo v1, "8002"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameLauncherNeedFreshStart(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    # invokes: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateCurrentStatusFromSharedPreference()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->updateMenuDimStatus()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->access$202(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
