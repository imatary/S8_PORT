.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$3;
.super Ljava/lang/Object;
.source "AbstractMoreInfoLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$3;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/sec/samsung/gallery/view/utils/ShowHintPopup;->onButtonLongClick(Landroid/view/View;Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method
