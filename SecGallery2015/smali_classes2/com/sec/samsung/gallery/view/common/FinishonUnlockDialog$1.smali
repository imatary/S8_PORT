.class Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog$1;
.super Ljava/lang/Object;
.source "FinishonUnlockDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->showFinishonUnlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;

    # getter for: Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->access$000(Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;

    # invokes: Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;->access$100(Lcom/sec/samsung/gallery/view/common/FinishonUnlockDialog;)V

    return-void
.end method
