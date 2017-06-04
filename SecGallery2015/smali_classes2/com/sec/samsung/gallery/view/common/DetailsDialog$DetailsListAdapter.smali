.class Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/DetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsListAdapter"
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/view/common/DetailsDialog$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/DetailsDialog;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/DetailsDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/DetailsDialog;->mDetailItemLayout:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/DetailsDialog;->access$600(Lcom/sec/samsung/gallery/view/common/DetailsDialog;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v3, 0x7f1200c2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/DetailsDialog$DetailsListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "_"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
