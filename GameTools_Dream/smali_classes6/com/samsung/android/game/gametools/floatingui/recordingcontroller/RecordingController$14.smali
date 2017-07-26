.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startMediaScan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

.field final synthetic val$scanFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->val$scanFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "startMediaScan: onMediaScannerConnected"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->val$scanFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$2000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->showRecordEndAnim(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$RecordingTopToastListener;)V

    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "RecordingController"

    const-string/jumbo v3, "startMediaScan: onScanCompleted"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isOnResume()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recording_force_stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const-string/jumbo v2, "GameTools"

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "tags"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$14;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$3200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
