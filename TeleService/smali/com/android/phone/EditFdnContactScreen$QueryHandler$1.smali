.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    sub-int v3, p6, p5

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    invoke-static {p1}, Lcom/android/phone/EditFdnContactScreen;->-wrap0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/EditFdnContactScreen;->-set2(Lcom/android/phone/EditFdnContactScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v3, 0x7f0d05b9

    invoke-virtual {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-interface {p4}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    if-gtz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->showToast()V

    :cond_1
    if-gtz v0, :cond_2

    const-string/jumbo v1, ""

    return-object v1

    :cond_2
    sub-int v1, p3, p2

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    return-object v1

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->showToast()V

    :cond_4
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public showToast()V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d05b8

    invoke-virtual {v1, v3, v2}, Lcom/android/phone/EditFdnContactScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
