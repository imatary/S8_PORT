.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$5;
.super Ljava/lang/Object;
.source "AbstractMoreInfoLocationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->showSaveMoreInfoDialog()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
