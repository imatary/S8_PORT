.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.source "MoreInfoItemVisualPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MorePeopleCategoryDataLoader"
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private mMediaId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->mMediaId:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->mMediaId:I

    return-void
.end method

.method private addRelatedPeopleCategory(Ljava/util/List;)V
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

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Related people"

    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->mMediaId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

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

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;->addRelatedPeopleCategory(Ljava/util/List;)V

    return-void
.end method
