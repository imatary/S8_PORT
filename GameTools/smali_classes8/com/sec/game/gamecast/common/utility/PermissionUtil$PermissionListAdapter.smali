.class Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    array-length v6, p2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, p2, v5

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    iget-object v7, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v7, :cond_0

    :try_start_1
    iget-object v7, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_0
    :goto_1
    if-nez v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/sec/game/gamecast/common/utility/PermissionUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PermissionListAdapter getView : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    # getter for: Lcom/sec/game/gamecast/common/utility/PermissionUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PermissionListAdapter getView : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

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

    const v4, 0x1010429

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/sec/game/gamecast/common/R$layout;->permission_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;

    invoke-direct {v0}, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;-><init>()V

    sget v1, Lcom/sec/game/gamecast/common/R$id;->permission_image_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;->permissionIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/game/gamecast/common/R$id;->permission_text_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;->permissionName:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;->permissionName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageItemInfo;

    iget v1, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;->permissionName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->setTextColorFromAttr(Landroid/content/Context;Ljava/lang/Object;IZ)V

    iget-object v2, v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;->permissionIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$PermissionListAdapter;->mGroupMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageItemInfo;

    iget v1, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-static {v3, v1, v4}, Lcom/sec/game/gamecast/common/utility/ThemeUtil;->applyTint(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/game/gamecast/common/utility/PermissionUtil$ViewHolder;

    goto :goto_0
.end method
