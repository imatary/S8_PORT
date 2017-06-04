.class Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$1;
.super Ljava/lang/Object;
.source "ViewAsDialogForDex.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$1;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$1;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    # invokes: Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$000(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V

    return-void
.end method
