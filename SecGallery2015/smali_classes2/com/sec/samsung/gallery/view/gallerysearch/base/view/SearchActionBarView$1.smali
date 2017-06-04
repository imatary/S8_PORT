.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "SearchActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLongTextToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v3, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->USE_DREAM_SEARCH_VIEW_UX:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a0268

    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLongTextToast:Landroid/widget/Toast;
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$002(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->mLongTextToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarView;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-object v0

    :cond_2
    const v1, 0x7f0a04a1

    goto :goto_0
.end method
