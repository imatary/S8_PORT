.class Lcom/sec/android/gallery3d/util/DualScreenManager$6;
.super Landroid/content/BroadcastReceiver;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/util/DualScreenManager;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/util/DualScreenManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$6;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SUBSCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SUBSCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "DualScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$6;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$100(Lcom/sec/android/gallery3d/util/DualScreenManager;)Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/util/DualScreenManager$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/util/DualScreenManager$6$1;-><init>(Lcom/sec/android/gallery3d/util/DualScreenManager$6;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$6;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    :cond_1
    return-void
.end method
