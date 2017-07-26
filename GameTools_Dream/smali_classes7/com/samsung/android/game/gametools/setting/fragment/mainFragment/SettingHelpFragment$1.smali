.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;
.super Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;
.source "SettingHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->bindListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/game/gametools/setting/fragment/BaseFragment$SettingClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;)V

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;Ljava/lang/Runnable;I)V

    const-string/jumbo v0, "902"

    const-string/jumbo v1, "9011"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
