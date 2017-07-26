.class Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;
.super Ljava/lang/Object;
.source "PlugRecordManager.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/PlugRecordManager$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/PlugRecordManager$1;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/PlugRecordManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;->a:Lcom/naver/glink/android/sdk/PlugRecordManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Lcom/naver/glink/android/sdk/b;->e()V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;->a:Lcom/naver/glink/android/sdk/PlugRecordManager$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;->a:Lcom/naver/glink/android/sdk/PlugRecordManager$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;->a:Lcom/naver/glink/android/sdk/PlugRecordManager$1;

    iget-object v1, v1, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->record_saved:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/PlugRecordManager$1$1;->a:Lcom/naver/glink/android/sdk/PlugRecordManager$1;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/PlugRecordManager$1;->b:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/t;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lcom/naver/glink/android/sdk/b;->f()V

    return-void
.end method
