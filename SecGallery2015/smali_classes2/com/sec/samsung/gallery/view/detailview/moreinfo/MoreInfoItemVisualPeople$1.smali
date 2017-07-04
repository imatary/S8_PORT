.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$1;
.super Ljava/lang/Object;
.source "MoreInfoItemVisualPeople.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;)Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;->setReadyToShowVisualPeople()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;)Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;->startItemAnimation()V

    :cond_0
    return-void
.end method
