.class Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$400(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper$3;->this$0:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->access$400(Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
