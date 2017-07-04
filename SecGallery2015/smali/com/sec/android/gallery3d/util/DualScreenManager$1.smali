.class Lcom/sec/android/gallery3d/util/DualScreenManager$1;
.super Landroid/database/ContentObserver;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/DualScreenManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$1;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/util/DualScreenManager$1;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$1;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$000(Lcom/sec/android/gallery3d/util/DualScreenManager;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$1;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$000(Lcom/sec/android/gallery3d/util/DualScreenManager;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "gallery.settingchanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    const-string/jumbo v0, "DualScreenManager"

    const-string/jumbo v1, "mSettingObsever onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
