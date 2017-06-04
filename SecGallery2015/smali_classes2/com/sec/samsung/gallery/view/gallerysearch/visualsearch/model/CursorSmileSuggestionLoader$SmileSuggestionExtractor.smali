.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorSmileSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmileSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v4, "Smile pictures"

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "suggestion_list_smile"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->extractMediaId(Landroid/database/Cursor;)I
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->extractCount(Landroid/database/Cursor;)I
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->mIsFromSuggestion:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->extractIsCloud(Landroid/database/Cursor;)I
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->extractOrientation(Landroid/database/Cursor;)I
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader$SmileSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorSmileSuggestionLoader;->setCoverBitmap(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    goto :goto_0
.end method
