.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.source "MoreInfoItemVisualCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoItemCategoryDataLoader"
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private mMediaId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->mMediaId:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->mMediaId:I

    return-void
.end method

.method private addRelatedCategory(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Related Category"

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->mMediaId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method


# virtual methods
.method protected addSubCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;->addRelatedCategory(Ljava/util/List;)V

    return-void
.end method
