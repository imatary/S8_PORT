.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->playHaptic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$17;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method
