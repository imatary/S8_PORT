.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get1(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get5(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Lcom/android/phone/photoring/PhotoringPhrase;

    move-result-object v5

    iget-object v3, v5, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    const-string/jumbo v5, "file://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "file://"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-virtual {v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "com.android.phone.fileprovider"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "video/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-virtual {v5, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get3(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-virtual {v5}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v6}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get3(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/photoring/PhotoringUtil;->getVideoFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IllegalArgumentException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v5, "PhotoringPhrasesEdit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t play video "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$2;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v7}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get5(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Lcom/android/phone/photoring/PhotoringPhrase;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
