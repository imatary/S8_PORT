.class Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;
.super Ljava/lang/Object;
.source "MediaViewerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/view/View;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/TextView;

.field final f:Landroid/widget/TextView;

.field final g:Landroid/view/View;

.field final synthetic h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_page:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->a:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_page_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->b:Landroid/view/View;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_total_page:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->c:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_subject:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->d:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_nickname:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->e:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->f:Landroid/widget/TextView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->viewer_view_post:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->g:Landroid/view/View;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$3;->b:[I

    invoke-static {p1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method a(ILcom/naver/glink/android/sdk/api/response/ArticleMedia;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->a:Landroid/widget/TextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->d(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/naver/glink/android/sdk/ui/viewer/a/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ARTICLE:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->e:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->writerNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/response/ArticleMedia;->getFormattedWriteDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->h:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;->c(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog;)Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    move-result-object v0

    sget-object v2, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;->ALL_MEDIA:Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$From;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;->g:Landroid/view/View;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;

    invoke-direct {v1, p0, p2}, Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c$1;-><init>(Lcom/naver/glink/android/sdk/ui/viewer/MediaViewerDialog$c;Lcom/naver/glink/android/sdk/api/response/ArticleMedia;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method
