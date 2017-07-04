.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;
.super Ljava/lang/Object;
.source "MoreInfoItemDetails.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$1900(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;->access$2000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemDetails$DetailsListAdapter;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
