.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MoreInfoItemVisualPeopleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mImageView:Landroid/widget/ImageView;

.field public final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1201ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f1201ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method
