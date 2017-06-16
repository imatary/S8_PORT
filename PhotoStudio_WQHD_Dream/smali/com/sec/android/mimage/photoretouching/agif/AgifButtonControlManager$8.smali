.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->postDelayedScrollToIndex()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->maxNumberOfThumbnailsPerRow:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2500(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v3

    div-int v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->thumbnailIndex:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1400(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifMyButton;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLineWithoutDelay(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$8;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->gridLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$2300(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
