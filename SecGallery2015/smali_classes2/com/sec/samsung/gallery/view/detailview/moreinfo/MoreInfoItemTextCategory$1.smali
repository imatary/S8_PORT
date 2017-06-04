.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory$1;
.super Ljava/lang/Object;
.source "MoreInfoItemTextCategory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->invalidate()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;)Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;->startItemAnimation()V

    :cond_0
    return-void
.end method
