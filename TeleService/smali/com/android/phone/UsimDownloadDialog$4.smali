.class Lcom/android/phone/UsimDownloadDialog$4;
.super Ljava/lang/Object;
.source "UsimDownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsimDownloadDialog;->onSKTDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownloadDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownloadDialog$4;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "USIMServiceOpenDialog"

    const-string/jumbo v1, "Set Download = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/android/phone/UsimDownloadDialog$4;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-virtual {v0}, Lcom/android/phone/UsimDownloadDialog;->finish()V

    return-void
.end method
