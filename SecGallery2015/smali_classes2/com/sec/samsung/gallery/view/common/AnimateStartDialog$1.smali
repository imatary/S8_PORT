.class Lcom/sec/samsung/gallery/view/common/AnimateStartDialog$1;
.super Ljava/lang/Object;
.source "AnimateStartDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;->startMoreService()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;->access$000(Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;)V

    return-void
.end method
