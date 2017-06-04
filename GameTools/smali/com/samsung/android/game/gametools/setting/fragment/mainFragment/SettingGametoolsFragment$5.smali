.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$5;
.super Ljava/lang/Object;
.source "SettingGametoolsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->createAndShowDialog(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$400(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/widget/Switch;

    move-result-object v1

    const v2, 0x7f0b00e6

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mToolsDisclaimerDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$602(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
