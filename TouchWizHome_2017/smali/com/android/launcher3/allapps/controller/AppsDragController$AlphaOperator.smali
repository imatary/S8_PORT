.class Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;
.super Lcom/android/launcher3/allapps/controller/DragOperator;
.source "AppsDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/DragOperator;-><init>()V

    return-void
.end method


# virtual methods
.method addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v4, p2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZZ)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p8, :cond_3

    move-object v6, v5

    :goto_0
    if-eqz p8, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    int-to-long v2, p3

    invoke-virtual {v0, p4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    if-eqz p6, :cond_4

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v3, 0x12c

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_2
    return-void

    :cond_3
    move-object v6, p4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->setRestorePosition(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->setRestorePosition(Z)V

    goto :goto_0
.end method

.method dropCompletedWithOutExtra(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->getRestorePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 2

    if-nez p2, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_0
    return-void
.end method

.method dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    return-void
.end method

.method dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;ZZ)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_0
    return-void
.end method

.method placeObjectsToNextPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method refreshObjectsToPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    return-void
.end method

.method updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V
    .locals 9

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphaOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v0

    const-wide/16 v2, -0x66

    const-wide/16 v4, -0x1

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    return-void
.end method
