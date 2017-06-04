.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToastForLauncher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT08"

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "4043"

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$600(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # setter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;
    invoke-static {v0, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$602(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnableSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->callLauncherRecordedVideo()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showLauncherEnablePopup()V

    goto :goto_0
.end method
