.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;
.super Ljava/lang/Object;
.source "AbstractMoreInfoItemLocation.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createAddressResolvingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressAvailable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AbsMoreInfoItemLocation"

    const-string/jumbo v1, "mEditMode and address is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$202(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->invalidate()V

    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AbsMoreInfoItemLocation"

    const-string/jumbo v1, "address is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$202(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->access$302(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
