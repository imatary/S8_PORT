.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;
.super Ljava/lang/Object;
.source "LabelStickerGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;

    move-result-object v5

    if-eqz p2, :cond_2

    if-eqz v5, :cond_2

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080369

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08038a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    iget v15, v3, Landroid/graphics/Rect;->right:I

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v16, v16, v12

    move/from16 v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v10, 0x32

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08037c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08037b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v13, v14, :cond_3

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v8

    if-lt v13, v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v7

    invoke-virtual {v5, v13, v10}, Landroid/widget/GridView;->smoothScrollBy(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    if-lt v13, v14, :cond_2

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v8

    if-gt v13, v14, :cond_2

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getNumColumn()I

    move-result v2

    :cond_4
    :goto_1
    invoke-virtual {v5}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v13

    if-le v13, v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v6

    neg-int v13, v13

    invoke-virtual {v5, v13, v10}, Landroid/widget/GridView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    instance-of v13, v13, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelFragment;->getNumColumn()I

    move-result v2

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    neg-int v13, v13

    invoke-virtual {v5, v13, v10}, Landroid/widget/GridView;->smoothScrollBy(II)V

    new-instance v13, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;Landroid/view/View;)V

    const-wide/16 v14, 0x19

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
