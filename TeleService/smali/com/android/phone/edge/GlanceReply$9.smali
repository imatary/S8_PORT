.class Lcom/android/phone/edge/GlanceReply$9;
.super Landroid/text/InputFilter$LengthFilter;
.source "GlanceReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->setFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/phone/edge/GlanceReply;


# direct methods
.method constructor <init>(Lcom/android/phone/edge/GlanceReply;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$9;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Lcom/android/phone/edge/GlanceReply;->-get0()I

    move-result v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    if-gtz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply$9;->showToast()V

    :cond_0
    if-gtz v0, :cond_1

    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/edge/GlanceReply$9;->showToast()V

    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public showToast()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$9;->this$0:Lcom/android/phone/edge/GlanceReply;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/phone/edge/GlanceReply;->-get0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0d0bd6

    invoke-virtual {v1, v3, v2}, Lcom/android/phone/edge/GlanceReply;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$9;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$9;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/edge/GlanceReply$9;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$9;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$9;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
