.class Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;
.super Ljava/lang/Object;
.source "RoundedSeekbar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->init(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x16

    const/16 v2, 0x15

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$400()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$400()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getOnStartTrackingTouch()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateProgress(F)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->invalidate()V

    :goto_0
    return v0

    :cond_1
    if-ne p2, v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$400()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->maxProgress:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$400()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getOnStartTrackingTouch()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->progress:F

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->updateProgress(F)V
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->invalidate()V

    goto :goto_0

    :cond_3
    if-eq p2, v2, :cond_4

    if-ne p2, v4, :cond_5

    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->getOnStopTrackingTouch()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->invalidate()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
