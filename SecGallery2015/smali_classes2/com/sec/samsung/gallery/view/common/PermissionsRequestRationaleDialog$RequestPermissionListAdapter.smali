.class Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PermissionsRequestRationaleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestPermissionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0357

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v6, 0x7f0400e6

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7, v7, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "PermissionsReqDialog"

    const-string/jumbo v6, "getCount() is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getCount()I

    move-result v5

    if-gt p1, v5, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-string/jumbo v5, "PermissionsReqDialog"

    const-string/jumbo v6, "position() is wrong"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->mPermissionInfos:Ljava/util/List;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$300(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;

    const v5, 0x7f12022c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f12022d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->loadItemInfoIcon(Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;
    invoke-static {v5, v1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->access$400(Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
