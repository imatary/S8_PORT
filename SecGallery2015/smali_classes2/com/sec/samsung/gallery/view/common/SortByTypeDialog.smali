.class public Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;
.super Ljava/lang/Object;
.source "SortByTypeDialog.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;

.field private final mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mListener:Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mListener:Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;

    return-object v0
.end method


# virtual methods
.method public showDialog(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040104

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f120256

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    sget-object v4, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$3;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$SortByType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const v4, 0x7f120255

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    const v4, 0x7f120259

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    sget-object v4, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$3;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$SortByOrderType:[I

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    const v4, 0x7f12025b

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0402

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a012f

    new-instance v5, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;

    invoke-direct {v5, p0, v2}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$2;-><init>(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;Landroid/view/View;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0080

    new-instance v6, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog$1;-><init>(Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    const v4, 0x7f120257

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_1
    const v4, 0x7f120258

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_2
    const v4, 0x7f12025a

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method
