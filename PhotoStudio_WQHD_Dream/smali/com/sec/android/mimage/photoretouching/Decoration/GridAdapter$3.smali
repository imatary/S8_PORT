.class Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;
.super Ljava/lang/Object;
.source "GridAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/16 v6, 0x3d

    const/16 v7, 0x32

    const-wide/16 v8, 0x19

    const/16 v4, 0x15

    if-eq p2, v4, :cond_0

    const/16 v4, 0x16

    if-eq p2, v4, :cond_0

    const/16 v4, 0x14

    if-eq p2, v4, :cond_0

    const/16 v4, 0x13

    if-ne p2, v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iget-boolean v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->isAlreadyFocused:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->isAlreadyFocused:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$1;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    :cond_2
    :goto_0
    const/4 v4, 0x0

    return v4

    :cond_3
    if-ne p2, v6, :cond_6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v4

    const v5, 0x80003

    if-ne v4, v5, :cond_6

    const/16 v0, 0xb

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    :cond_4
    if-ne v2, v0, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/GridView;->smoothScrollBy(II)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$2;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    goto :goto_0

    :cond_6
    if-ne p2, v6, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v4

    const v5, 0x8000a

    if-ne v4, v5, :cond_2

    const/16 v0, 0xb

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    :cond_7
    if-ne v2, v0, :cond_8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/GridView;->smoothScrollBy(II)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$3;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$3;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mPreviousView:Landroid/view/View;

    goto/16 :goto_0
.end method
