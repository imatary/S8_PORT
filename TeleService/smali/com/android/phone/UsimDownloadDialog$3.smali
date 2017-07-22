.class Lcom/android/phone/UsimDownloadDialog$3;
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

    iput-object p1, p0, Lcom/android/phone/UsimDownloadDialog$3;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/UsimDownloadDialog$3;->this$0:Lcom/android/phone/UsimDownloadDialog;

    const-string/jumbo v4, "UsimDownload"

    invoke-virtual {v3, v4, v1}, Lcom/android/phone/UsimDownloadDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "Download"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v3, "USIMServiceOpenDialog"

    const-string/jumbo v4, "Set Download = true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/UsimDownloadDialog$3;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-static {v3}, Lcom/android/phone/UsimDownloadDialog;->-get0(Lcom/android/phone/UsimDownloadDialog;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0d06ed

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/UsimDownloadDialog$3;->this$0:Lcom/android/phone/UsimDownloadDialog;

    invoke-static {v3}, Lcom/android/phone/UsimDownloadDialog;->-wrap0(Lcom/android/phone/UsimDownloadDialog;)V

    return-void
.end method
