.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mImagePoi:Landroid/widget/ImageView;

.field public final mImageView:Landroid/widget/ImageView;

.field public final mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f120164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f120166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f120165

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter$ViewHolder;->mImagePoi:Landroid/widget/ImageView;

    return-void
.end method
