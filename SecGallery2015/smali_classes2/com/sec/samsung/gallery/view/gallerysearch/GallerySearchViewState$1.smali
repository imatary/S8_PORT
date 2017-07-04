.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "GallerySearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v9, "GallerySearchViewState"

    const-string/jumbo v10, "GallerySearchViewState:handleMessage(), case MSG_UPDATE_CATEGORY"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$102(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->refreshTagList()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->updateKeyword(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagListMap()Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setTagListMap(Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    move-result v2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    move-result v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b01fd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f120233

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    float-to-int v6, v9

    :goto_1
    add-int v9, v2, v0

    add-int/2addr v9, v3

    add-int/2addr v9, v5

    add-int/2addr v9, v6

    if-ge v9, v1, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v9

    add-int v10, v2, v0

    invoke-virtual {v9, v8, v10, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :pswitch_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->reloadData(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
