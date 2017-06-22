.class Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;
.super Ljava/lang/Object;
.source "GridAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 13

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v2

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080369

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getCurrentState()I

    move-result v9

    const v10, 0x80002

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08038a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v8

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v7, 0x32

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08037c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08037b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v10, :cond_2

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v5

    if-lt v9, v10, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v2, v9, v7}, Landroid/widget/GridView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_1

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v5

    if-gt v9, v10, :cond_1

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mDecorationMenuLayoutManager:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;
    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->getNumColumn()I

    move-result v10

    if-le v9, v10, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    neg-int v9, v9

    invoke-virtual {v2, v9, v7}, Landroid/widget/GridView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v2, v9, v7}, Landroid/widget/GridView;->smoothScrollBy(II)V

    goto :goto_0
.end method
