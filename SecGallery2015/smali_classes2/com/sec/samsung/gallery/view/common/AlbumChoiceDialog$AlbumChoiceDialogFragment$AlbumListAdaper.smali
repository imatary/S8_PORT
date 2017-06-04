.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;
.super Landroid/widget/BaseAdapter;
.source "AlbumChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumListAdaper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)Ljava/util/ArrayList;

    move-result-object v0

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
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    const v7, 0x7f04009d

    invoke-virtual {v2, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f120144

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x7f120146

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f02032a

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v6

    :cond_0
    const v7, 0x7f04009b

    invoke-virtual {v2, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f1201a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v7, 0x7f1201a8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f1201a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x7f1201a6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->checkedposition:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->access$600(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;)I

    move-result v7

    if-ne p1, v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;

    invoke-direct {v7, p0, p1, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper$1;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;ILandroid/widget/RadioButton;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment$AlbumListAdaper;->this$1:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog$AlbumChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->mAlbumList:[Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->access$200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f020281

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const v7, 0x7f020280

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
