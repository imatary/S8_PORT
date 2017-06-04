.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;
.super Ljava/lang/Object;
.source "MoreInfoCategoryPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

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

.field private final mListItemClickListener:Landroid/view/View$OnClickListener;

.field private mResult:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mListItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->initDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mResult:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->dimiss()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mListItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private dimiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initDialog()V
    .locals 7

    const v6, 0x7f0a008b

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0400aa

    const/4 v4, 0x0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0080

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$3;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x10100

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    const v4, 0x7f1201c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$CategoryListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$4;

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;Landroid/widget/ListView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public registerResultCallBack(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mResult:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog$Result;

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoCategoryPickerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
