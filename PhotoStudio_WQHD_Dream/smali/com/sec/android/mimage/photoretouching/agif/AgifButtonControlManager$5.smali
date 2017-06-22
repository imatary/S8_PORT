.class Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;
.super Ljava/lang/Object;
.source "AgifButtonControlManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->computeScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mScrollView:Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$1000(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->mButtonList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;->access$700(Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/agif/AgifButtonControlManager$5;->val$index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/AgifTogglableScrollView;->scrollToLineWithoutDelay(I)V

    return-void
.end method
