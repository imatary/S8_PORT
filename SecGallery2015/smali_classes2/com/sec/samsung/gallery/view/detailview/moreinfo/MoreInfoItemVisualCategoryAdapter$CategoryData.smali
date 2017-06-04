.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;
.super Ljava/lang/Object;
.source "MoreInfoItemVisualCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryData"
.end annotation


# instance fields
.field public final item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    return-void
.end method
