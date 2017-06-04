.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1$1;
.super Ljava/lang/Object;
.source "SettingGametoolsFloatingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/game/gametools/setting/activity/SettingLockKey;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFloatingFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
