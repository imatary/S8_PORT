.class Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/setting/activity/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinished(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14$1;-><init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    const-string/jumbo v1, "CMD_RECORD_SUCCESS"

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->toast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    # invokes: Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->startMediaScan(Ljava/lang/String;)V
    invoke-static {v0, p3}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->access$000(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$14;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    const-string/jumbo v1, "CMD_RECORD_FAIL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->toast(Ljava/lang/String;)V

    goto :goto_0
.end method
