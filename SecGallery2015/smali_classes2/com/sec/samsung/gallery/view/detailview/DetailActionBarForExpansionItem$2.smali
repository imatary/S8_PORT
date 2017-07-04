.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;
.super Ljava/lang/Object;
.source "DetailActionBarForExpansionItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "SingleItemOnly"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "smartmanager"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHierarchicalUpButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->setDisplayOptions(ZZ)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method
