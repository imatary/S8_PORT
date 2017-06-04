.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionsViewHolder;
.super Ljava/lang/Object;
.source "SuggestionListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsViewHolder"
.end annotation


# instance fields
.field final iconView:Landroid/widget/ImageView;

.field final itemLayout:Landroid/widget/LinearLayout;

.field final poiIconView:Landroid/widget/ImageView;

.field final textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f12013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionsViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f12013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionsViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f12013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionsViewHolder;->poiIconView:Landroid/widget/ImageView;

    const v0, 0x7f120139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionsViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    return-void
.end method
