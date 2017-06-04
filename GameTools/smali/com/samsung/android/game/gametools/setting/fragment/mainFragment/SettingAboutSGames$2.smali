.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames$2;
.super Ljava/lang/Object;
.source "SettingAboutSGames.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;

    const-string/jumbo v2, "FRAGMENT_PRIVACY_POLICY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->replaceFragment(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames$2$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutSGames$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
