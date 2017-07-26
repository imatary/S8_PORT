.class Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;
.super Ljava/lang/Object;
.source "JumpToRecordedVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->showLauncherEnablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setGameHomeEnableSync(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->access$000(Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
