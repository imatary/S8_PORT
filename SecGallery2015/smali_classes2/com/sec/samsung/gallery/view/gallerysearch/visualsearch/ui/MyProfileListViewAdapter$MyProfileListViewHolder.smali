.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListViewHolder;
.super Ljava/lang/Object;
.source "MyProfileListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyProfileListViewHolder"
.end annotation


# instance fields
.field final mItemLayout:Landroid/widget/LinearLayout;

.field final mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f12026d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListViewHolder;->mItemLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f12026e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/MyProfileListViewAdapter$MyProfileListViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method
