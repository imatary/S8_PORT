.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;
.super Ljava/lang/Object;
.source "SuggestionListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

.field final synthetic val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mSuggestionSubCategory:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$3;->val$currentListData:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;

    iget v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter$SuggestionListItem;->mLocationType:I

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestionListViewAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
