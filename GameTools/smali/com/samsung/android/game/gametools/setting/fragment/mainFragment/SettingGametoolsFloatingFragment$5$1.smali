.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5$1;
.super Ljava/lang/Object;
.source "SettingGametoolsFloatingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;

    const-string/jumbo v1, "FRAGMENT_ABOUT_GAME_TOOLS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->replaceFragment(Ljava/lang/String;)V

    return-void
.end method
