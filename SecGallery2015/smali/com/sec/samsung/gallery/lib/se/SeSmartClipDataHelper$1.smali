.class Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$1;
.super Ljava/lang/Object;
.source "SeSmartClipDataHelper.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->getExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v6

    new-array v7, v9, [I

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v7, v0

    aget v4, v7, v5

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p3}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->getExtractionMode()I

    move-result v8

    if-ne v8, v9, :cond_0

    :goto_0
    const-string/jumbo v0, "SeSmartClipDataHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "extractSmartClipData : croppedArea = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / GlRootViewOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;->access$000(Lcom/sec/samsung/gallery/lib/se/SeSmartClipDataHelper;)Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;

    move-result-object v0

    invoke-interface/range {v0 .. v5}, Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListener;->getMetaAreaRect(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "SeSmartClipDataHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "extractSmartClipData : Meta data rect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v8, "plain_text"

    const-string/jumbo v9, ""

    invoke-direct {v0, v8, v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    :goto_1
    return v6

    :cond_0
    move v5, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SeSmartClipDataHelper"

    const-string/jumbo v8, "extractSmartClipData : Could not find any meta data"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
