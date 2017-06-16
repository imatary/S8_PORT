.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-int v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$002(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    sub-int v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->setFrameCenter()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)V

    if-le p2, p4, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "846"

    const-string v1, "8004"

    const-string v2, "Swipe backward"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isTouchDown:Z
    invoke-static {v0, v4}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$402(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isScrolling:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$302(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->showGridItemSubMenu(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$800(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isOnOrientationChange:Z
    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$002(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;Z)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->isClick:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$200(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridItemSubMenuLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$100(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v0, "846"

    const-string v1, "8005"

    const-string v2, "Swipe forward"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    if-ge p2, p4, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mCurrentIndex:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$600(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_8

    const-string v0, "846"

    const-string v1, "8005"

    const-string v2, "Swipe forward"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "846"

    const-string v1, "8004"

    const-string v2, "Swipe backward"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
