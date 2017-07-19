.class Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PermissionsRequestRationaleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;
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
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f040017

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4, v4, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Cropper2_PermissionsDialog"

    const-string/jumbo v1, "getCount() is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-string/jumbo v0, "Cropper2_PermissionsDialog"

    const-string/jumbo v1, "position() is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get2(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get2(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    :cond_4
    return-object p2

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get2(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionGroupInfo;

    const v1, 0x7f0c003b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0c003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v3, v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-wrap0(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;Landroid/content/pm/PackageItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-get0(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "Google Photos"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog$RequestPermissionListAdapter;->this$0:Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;

    invoke-static {v0, v4}, Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;->-set0(Lcom/android/gallery3d/permissions/PermissionsRequestRationaleDialog;Z)Z

    :cond_6
    return-object p2
.end method
