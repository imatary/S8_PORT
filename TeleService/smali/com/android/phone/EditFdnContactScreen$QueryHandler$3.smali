.class Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;
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
.field beforeArray:[C

.field final synthetic this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->beforeArray:[C

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get4(Lcom/android/phone/EditFdnContactScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->-set1(Lcom/android/phone/EditFdnContactScreen;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v0, v0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->-set1(Lcom/android/phone/EditFdnContactScreen;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->beforeArray:[C

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/16 v4, 0x2b

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get9(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v2, v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;->this$1:Lcom/android/phone/EditFdnContactScreen$QueryHandler;

    iget-object v1, v1, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->-get9(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method
