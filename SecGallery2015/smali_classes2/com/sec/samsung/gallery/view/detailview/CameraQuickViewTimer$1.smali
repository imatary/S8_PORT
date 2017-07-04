.class Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;
.super Landroid/os/CountDownTimer;
.source "CameraQuickViewTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->access$000(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->access$000(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;)Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$OnFinishedListener;->onFinished()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;->access$102(Lcom/sec/samsung/gallery/view/detailview/CameraQuickViewTimer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
