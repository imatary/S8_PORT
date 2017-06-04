.class Lcom/sec/android/gallery3d/data/EventAlbumManager$3;
.super Landroid/content/BroadcastReceiver;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$3;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_2

    const-string/jumbo v3, "com.samsung.app.highlightvideo.AnalyseStatus"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "IsEventSuccess"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "eventIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "EventAlbumManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hv valid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", eventId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$3;->this$0:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    # invokes: Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateHighlightVideoStatus(Ljava/lang/String;I)V
    invoke-static {v3, v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->access$200(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/lang/String;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "EventAlbumManager"

    const-string/jumbo v4, "intent is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
