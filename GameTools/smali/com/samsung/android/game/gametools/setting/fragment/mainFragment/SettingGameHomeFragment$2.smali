.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$2;
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;->access$202(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGameHomeFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
