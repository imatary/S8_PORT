.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;
.super Ljava/lang/Object;
.source "SettingAboutGameTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;

    const-string/jumbo v2, "FRAGMENT_TERMS_AND_CONDITIONS_TOOLS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/setting/activity/SettingsActivity;->replaceFragment(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingAboutGameTools$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, "903"

    const-string/jumbo v2, "9033"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
