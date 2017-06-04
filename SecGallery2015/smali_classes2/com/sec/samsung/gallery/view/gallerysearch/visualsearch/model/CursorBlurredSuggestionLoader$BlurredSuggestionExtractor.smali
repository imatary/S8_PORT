.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorBlurredSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurredSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v3, "Blurry pictures"

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "suggestion_list_blurred"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractMediaId(Landroid/database/Cursor;)I
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractCount(Landroid/database/Cursor;)I
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mIsFromSuggestion:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v3

    if-lt v1, v3, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractIsCloud(Landroid/database/Cursor;)I
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v3

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractOrientation(Landroid/database/Cursor;)I
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractMediaType(Landroid/database/Cursor;)I
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->setCoverBitmap(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    goto :goto_0
.end method
