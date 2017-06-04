.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4$1;
.super Ljava/lang/Object;
.source "SettingGametoolsFloatingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$4;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->goContactUs()V

    :cond_0
    return-void
.end method
