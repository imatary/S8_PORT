.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;
.super Ljava/lang/Object;
.source "SearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->setEmptyHistoryText(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

.field final synthetic val$colorId:I

.field final synthetic val$resId:I

.field final synthetic val$textSizeId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;III)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->val$resId:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->val$colorId:I

    iput p4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->val$textSizeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const v3, 0x7f120233

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->val$colorId:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$3;->val$textSizeId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
