.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacingItemDecoration.java"


# instance fields
.field private final mSpacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;->mSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;->mSpacing:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method
