.class Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;
.super Ljava/lang/Object;
.source "ImageEditCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ImageEditCmd;->showAppChoiceDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

.field final synthetic val$shareAppList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ImageEditCmd;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/ImageEditCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->val$shareAppList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->val$shareAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->val$shareAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->val$shareAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemObject(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->val$shareAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemPackageName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$1;->val$shareAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/ImageEditCmd$EditPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
