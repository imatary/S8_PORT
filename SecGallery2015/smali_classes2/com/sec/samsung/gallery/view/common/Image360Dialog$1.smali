.class Lcom/sec/samsung/gallery/view/common/Image360Dialog$1;
.super Ljava/lang/Object;
.source "Image360Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/Image360Dialog;->createDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/Image360Dialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/Image360Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/Image360Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/Image360Dialog$1;->this$0:Lcom/sec/samsung/gallery/view/common/Image360Dialog;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/Image360Dialog;->access$000(Lcom/sec/samsung/gallery/view/common/Image360Dialog;)V

    return-void
.end method
