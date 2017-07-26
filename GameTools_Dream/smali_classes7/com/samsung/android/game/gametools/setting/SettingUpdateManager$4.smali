.class Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$4;
.super Ljava/lang/Object;
.source "SettingUpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showTurnOffAirplaneModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$4;->this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$4;->this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->access$000(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
