.class Lcom/naver/glink/android/sdk/ui/floating/b$3;
.super Ljava/lang/Object;
.source "RecordWidgetDialog.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/floating/b;->a()Lcom/naver/glink/android/sdk/ui/record/RecordManager$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/text/DecimalFormat;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/floating/b;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/floating/b;Ljava/text/DecimalFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->a:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->b(Lcom/naver/glink/android/sdk/ui/floating/b;Z)Z

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->r(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->s(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(J)V
    .locals 5

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->g(Lcom/naver/glink/android/sdk/ui/floating/b;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->a:Ljava/text/DecimalFormat;

    long-to-int v1, p1

    div-int/lit8 v1, v1, 0x3c

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->a:Ljava/text/DecimalFormat;

    long-to-int v2, p1

    rem-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/floating/b;->t(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->r(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->s(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->t(Lcom/naver/glink/android/sdk/ui/floating/b;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/floating/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->record_saved:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

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

    invoke-static {v0}, Lcom/naver/glink/android/sdk/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/floating/b$3;->b:Lcom/naver/glink/android/sdk/ui/floating/b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/b;->dismissAllowingStateLoss()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string/jumbo v0, "PLUG"

    const-string/jumbo v1, "Record error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
