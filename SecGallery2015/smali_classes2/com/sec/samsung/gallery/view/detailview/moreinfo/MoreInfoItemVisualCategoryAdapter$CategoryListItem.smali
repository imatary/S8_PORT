.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;
.super Ljava/lang/Object;
.source "MoreInfoItemVisualCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryListItem"
.end annotation


# instance fields
.field final mCategoryItem:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;->mCategoryItem:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    return-void
.end method


# virtual methods
.method public getCategoryItem()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;->mCategoryItem:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    return-object v0
.end method
