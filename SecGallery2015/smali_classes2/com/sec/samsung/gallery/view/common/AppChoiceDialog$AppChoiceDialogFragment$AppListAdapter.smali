.class Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppChoiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/high16 v5, -0x1000000

    if-nez p2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;-><init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$1;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mDisplayAsGridView:Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$600(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v4, 0x7f040031

    :goto_0
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePopupMenuDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v4, 0x7f0400f7

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v6, 0x7f120090

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->image:Landroid/widget/ImageView;

    const v6, 0x7f120091

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mItemInfoHandler:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;->getItemIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mGridView:Landroid/widget/GridView;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$700(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Landroid/widget/GridView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePopupMenuDialog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->text:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLines(I)V

    return-object p2

    :cond_5
    const v4, 0x7f04002f

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->mCtx:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$AppListAdapter;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->mAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static {v7, v6}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->getAppIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
