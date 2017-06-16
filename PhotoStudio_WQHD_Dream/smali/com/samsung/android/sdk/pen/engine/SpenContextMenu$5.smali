.class Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;
.super Ljava/lang/Object;
.source "SpenContextMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getMoreButtonLayout()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$600(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v2

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$502(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;I)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setExtraRowVisible(Z)V
    invoke-static {v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$700(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$800(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z
    invoke-static {v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1002(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;Z)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Z

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreButton:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1100(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreButton:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1100(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCloseButton:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1200(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCloseButton:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1200(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1400(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z
    invoke-static {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1002(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;Z)Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # setter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z
    invoke-static {v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$1002(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;Z)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$500(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1
.end method
