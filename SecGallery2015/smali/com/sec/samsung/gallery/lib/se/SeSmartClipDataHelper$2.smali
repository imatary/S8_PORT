.class Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;
.super Ljava/lang/Object;
.source "SeSmartClipDataHelper.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->getExtractionListenerForDetailView()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 5

    invoke-interface {p2, p1}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->intersects(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/content/smartclip/SemSmartClipViewHelper;->extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->access$100(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;->isAvailableExtract()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->access$100(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "file_path_image"

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->access$100(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;->getFilePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    new-instance v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->access$100(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$2;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    # getter for: Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->mDataListenerForDetailView:Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->access$100(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;

    move-result-object v2

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;->getMetaAreaRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const-string/jumbo v1, "file_path_video"

    goto :goto_0
.end method
