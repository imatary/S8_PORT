.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$6;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity$6;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;

    const v3, 0x7f12007f

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f120078

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
