.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

.field final synthetic val$currentTab:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->val$currentTab:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->val$currentTab:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->val$currentTab:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->val$currentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$6;->val$currentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    return-void
.end method
