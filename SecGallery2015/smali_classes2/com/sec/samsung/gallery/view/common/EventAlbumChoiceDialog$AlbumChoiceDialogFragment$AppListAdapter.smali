.class Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventAlbumChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->access$300(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f0400fb

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :goto_0
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f120245

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog$AlbumChoiceDialogFragment$AppListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f02020f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object v4

    :cond_0
    move-object v4, p2

    goto :goto_0

    :cond_1
    const v5, 0x7f020280

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
