.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;
.super Ljava/lang/Object;
.source "LabelStickerGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

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
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-boolean v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->isAlreadyFocused:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->isAlreadyFocused:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3$1;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mPreviousView:Landroid/view/View;

    :cond_2
    :goto_0
    const/4 v4, 0x0

    return v4

    :cond_3
    const/16 v4, 0x3d

    if-ne p2, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)I

    move-result v4

    const/16 v5, 0x28

    if-lt v4, v5, :cond_2

    const/16 v0, 0xb

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mPreviousView:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mPreviousView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v2

    :cond_4
    if-ne v2, v0, :cond_6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_5
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    const/16 v6, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/widget/GridView;->smoothScrollBy(II)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;

    move-result-object v4

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3$2;

    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mPreviousView:Landroid/view/View;

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    iput-object p1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mPreviousView:Landroid/view/View;

    goto :goto_0
.end method
