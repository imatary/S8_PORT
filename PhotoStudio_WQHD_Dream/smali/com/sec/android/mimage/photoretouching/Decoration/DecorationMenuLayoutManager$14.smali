.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-result-object v1

    const v2, 0x7f0e044c

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTestInterface:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$900(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTestInterface:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$900(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$DrawListners;->drawerCloseListner()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$14;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mIsExpand:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$1002(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Z)Z

    return-void
.end method
