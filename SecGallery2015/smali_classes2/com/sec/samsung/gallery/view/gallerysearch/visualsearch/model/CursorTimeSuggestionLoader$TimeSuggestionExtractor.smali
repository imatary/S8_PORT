.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorTimeSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSuggestionExtractor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 5

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v2, "Time"

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "suggestion_list_time_category"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->mMediaId:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->mSubCategory:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader$TimeSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->mMediaId:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTimeSuggestionLoader;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    goto :goto_0
.end method
