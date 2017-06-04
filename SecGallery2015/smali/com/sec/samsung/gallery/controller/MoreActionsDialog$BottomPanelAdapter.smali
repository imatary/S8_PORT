.class Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "MoreActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/MoreActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomPanelAdapter"
.end annotation


# instance fields
.field private final arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field final layout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->layout:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->getItemActionId(I)I

    move-result v0

    return v0
.end method

.method private getItemActionId(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->getId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->getName()Ljava/lang/String;

    move-result-object v0

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v2, 0x7f120042

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020237

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->getIcon()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f120142

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
