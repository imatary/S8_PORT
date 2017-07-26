.class Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->startMediaScan(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

.field final synthetic val$scanFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->val$scanFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->access$100(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->access$100(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->val$scanFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->access$100(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/activity/TestActivity$15;->this$0:Lcom/samsung/android/game/gametools/setting/activity/TestActivity;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/TestActivity;->access$200(Lcom/samsung/android/game/gametools/setting/activity/TestActivity;Landroid/content/Context;)V

    return-void
.end method
