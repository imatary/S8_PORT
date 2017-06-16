.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerHide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

.field final synthetic val$animation:Landroid/view/animation/Animation;

.field final synthetic val$isAnim:Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;ZLandroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->val$isAnim:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->val$animation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->val$isAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationTabContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$700(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$10;->val$animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
