.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;
.super Landroid/database/DataSetObserver;
.source "FilterGroupDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 8

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v5, v3, v6, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v5

    sget-object v6, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v5, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<u>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0336

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</u>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setEnabled(Z)V

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->requestLayout()V

    return-void
.end method
