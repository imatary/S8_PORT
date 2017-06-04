.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;
.source "SettingGametoolsFloatingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->bindListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;->onClick(Landroid/view/View;)V

    const-string/jumbo v0, "901"

    const-string/jumbo v1, "9004"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$3;)V

    const/16 v2, 0x12c

    # invokes: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->postDelayed(Ljava/lang/Runnable;I)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->access$300(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;Ljava/lang/Runnable;I)V

    return-void
.end method
