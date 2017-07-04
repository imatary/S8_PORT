.class Lcom/sec/android/gallery3d/util/DualScreenManager$7;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$7;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$7;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$500(Lcom/sec/android/gallery3d/util/DualScreenManager;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$7;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    const-string/jumbo v2, "com.samsung.android.dualscreen.extra.FOLDING_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$502(Lcom/sec/android/gallery3d/util/DualScreenManager;I)I

    const-string/jumbo v1, "DualScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive :: Folding status changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$7;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/DualScreenManager;->access$500(Lcom/sec/android/gallery3d/util/DualScreenManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/DualScreenManager$7;->this$0:Lcom/sec/android/gallery3d/util/DualScreenManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/DualScreenManager;->setExpandShrinkButton()V

    return-void
.end method
