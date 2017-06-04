.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreInfoCategoryPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryListAdapter"
.end annotation


# instance fields
.field private final mCategoryStringId:[Ljava/lang/Object;

.field private final mCategoryStrings:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStrings:[Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStringId:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addTag(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStrings:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStrings:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400a9

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v2, 0x7f1201c4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStringId:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStrings:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->mCategoryStrings:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setFocusable(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mListItemClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
