.class Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlMovementDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/glcore/GlMovementDetector;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "GlMovementDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GlMovementDetector cmd == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$000(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onLongClick(II)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$302(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$400(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$000(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$200(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMultiSelectRelease(II)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$202(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onLongClick(II)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$302(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$002(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMultiSelectEnter(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mFirstEnterMultiSelect:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$500(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$100(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;->onMultiSelectMove(II)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mFirstEnterMultiSelect:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$502(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    :cond_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z
    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$202(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$400(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mClickActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$302(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mLongTmActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$002(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlMovementDetector$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    # setter for: Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->mMultiSelectionActive:Z
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->access$202(Lcom/sec/android/gallery3d/glcore/GlMovementDetector;Z)Z

    goto/16 :goto_0
.end method
