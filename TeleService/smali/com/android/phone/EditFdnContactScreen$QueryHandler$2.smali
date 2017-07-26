.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditFdnContactScreen$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field beforeString:Ljava/lang/String;

.field byteArrayName:[B

.field mCurrentString:Ljava/lang/String;

.field needResetMaxLength:Z

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->beforeString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->needResetMaxLength:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get3(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1, v4}, Lcom/android/phone/EditFdnContactScreen;->-set0(Lcom/android/phone/EditFdnContactScreen;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0d05b8

    invoke-virtual {v1, v3, v2}, Lcom/android/phone/EditFdnContactScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get1(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const v3, 0x7f0d05b9

    invoke-virtual {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1, v4}, Lcom/android/phone/EditFdnContactScreen;->-set2(Lcom/android/phone/EditFdnContactScreen;Z)Z

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1, v3}, Lcom/android/phone/EditFdnContactScreen;->-set0(Lcom/android/phone/EditFdnContactScreen;Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get13(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->beforeString:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    if-le v3, v4, :cond_3

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v5, v5, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v5}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get7(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "byteArrayName Length is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->-wrap5(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->byteArrayName:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->mCurrentString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    :cond_5
    if-lez v1, :cond_7

    new-array v0, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get7(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-boolean v7, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->needResetMaxLength:Z

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-boolean v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->needResetMaxLength:Z

    if-eqz v3, :cond_6

    new-array v0, v7, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v4, v4, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v3, v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get7(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iput-boolean v6, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;->needResetMaxLength:Z

    goto :goto_1
.end method
