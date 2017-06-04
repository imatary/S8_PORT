.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$2;
.super Ljava/lang/Object;
.source "KeywordSuggestionListViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;->onDataLoadComplete()V

    return-void
.end method
