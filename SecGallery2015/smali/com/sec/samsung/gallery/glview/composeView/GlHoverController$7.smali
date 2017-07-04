.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onBitmapAvailable()V
    .locals 10

    const-wide/16 v4, 0x1f4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)J

    move-result-wide v2

    sub-long v8, v0, v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2108(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    const-string/jumbo v0, "GlHoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mListenerBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", term = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    cmp-long v0, v8, v4

    if-gez v0, :cond_1

    sub-long v6, v4, v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$7;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
