.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;
.super Ljava/lang/Object;
.source "VisualSearchFaceTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->setBtnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->mEditTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->faceTagSubmit(Ljava/lang/String;JZ)V
    invoke-static {v1, v2, v4, v5, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchFaceTagActivity;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method
