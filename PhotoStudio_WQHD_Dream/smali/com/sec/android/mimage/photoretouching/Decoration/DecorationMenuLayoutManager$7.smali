.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->drawerShow()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAnimate:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$602(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mTrayDrawer:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->checkifHeightisProperandInvalidate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mAnimate:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->access$602(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;Z)Z

    return-void
.end method
