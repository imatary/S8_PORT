.class Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$6;
.super Ljava/lang/Object;
.source "SettingUpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->showUseDataRoamingDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$6;->this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager$6;->this$0:Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;->access$000(Lcom/samsung/android/game/gametools/setting/SettingUpdateManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->semSetDataEnabled(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
