.class Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$2;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog$2;->this$0:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    const-string/jumbo v1, "CustomProgressDialog"

    const-string/jumbo v2, "closeCustomProgressDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CustomProgressDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
