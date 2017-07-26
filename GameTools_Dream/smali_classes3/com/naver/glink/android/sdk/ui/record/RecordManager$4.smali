.class Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;
.super Landroid/hardware/display/VirtualDisplay$Callback;
.source "RecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Z)Landroid/hardware/display/VirtualDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplay$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "record callback onPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResumed()V
    .locals 2

    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "record callback onResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;->a()V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "record callback onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/RecordManager$4;->a:Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->e(Lcom/naver/glink/android/sdk/ui/record/RecordManager;)Lcom/naver/glink/android/sdk/ui/record/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/record/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->b(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->d()Lcom/naver/glink/android/sdk/ui/record/RecordManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->c(Lcom/naver/glink/android/sdk/ui/record/RecordManager;Z)Z

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/record/RecordManager;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string/jumbo v0, "naverRecord"

    const-string/jumbo v1, "record stop error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
