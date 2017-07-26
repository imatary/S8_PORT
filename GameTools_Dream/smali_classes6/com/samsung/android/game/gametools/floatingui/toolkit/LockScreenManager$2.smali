.class Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$2;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LockScreenManager"

    const-string/jumbo v1, "Battery upate on lock screen"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getBatteryPercentFromIntent(Landroid/content/Intent;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;I)V

    :cond_0
    return-void
.end method
