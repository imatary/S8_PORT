.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;
.super Ljava/lang/Object;
.source "KeywordSuggestionListViewAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadComplete()V
    .locals 14

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->createListItems()Ljava/util/List;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mComparator:Ljava/util/Comparator;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mIsCancelled:Z
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Z

    move-result v12

    if-eqz v12, :cond_1

    monitor-exit v11

    :goto_1
    return-void

    :cond_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v12, v12, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->getTranslatedWord(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Ljava/lang/String;
    invoke-static {v12, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mKey:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_2
    :try_start_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mKey:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mKey:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mStartList:Ljava/util/List;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v3, Landroid/widget/Filter$FilterResults;->count:I

    :cond_4
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mKeywordSuggestionResultItems:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v12, v12, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mKeywordSuggestionResultItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->notifyDataSetChanged()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mFilterListener:Landroid/widget/Filter$FilterListener;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Landroid/widget/Filter$FilterListener;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->mFilterListener:Landroid/widget/Filter$FilterListener;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;)Landroid/widget/Filter$FilterListener;

    move-result-object v10

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v12, v12, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mKeywordSuggestionResultItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-interface {v10, v12}, Landroid/widget/Filter$FilterListener;->onFilterComplete(I)V

    :cond_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mIsDataLoading:Z
    invoke-static {v10, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$002(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;Z)Z

    goto/16 :goto_1
.end method

.method public onDataLoadProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter$SuggestionFilter;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->mIsDataLoading:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->access$002(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;Z)Z

    return-void
.end method
