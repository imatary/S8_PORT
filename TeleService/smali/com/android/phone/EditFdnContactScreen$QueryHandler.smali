.class Lcom/android/phone/EditFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 5

    const/4 v1, 0x1

    const-string/jumbo v0, "-1001"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string/jumbo v3, "onInsertComplete"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-wrap2(Lcom/android/phone/EditFdnContactScreen;Z)V

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInsertComplete: URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-wrap5(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInsertComplete: URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-wrap5(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2, v1, v0}, Lcom/android/phone/EditFdnContactScreen;->-wrap3(Lcom/android/phone/EditFdnContactScreen;ZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string/jumbo v3, "onInsertComplete: URI is null"

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-wrap5(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete() : cursor.count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v2}, Lcom/android/phone/EditFdnContactScreen;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string/jumbo v3, "onQueryComplete: Fragment finished."

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-wrap5(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2, v6}, Lcom/android/phone/EditFdnContactScreen;->-wrap2(Lcom/android/phone/EditFdnContactScreen;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get5(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string/jumbo v3, "onQueryComplete: not mIsRefreshingSIM"

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-set4(Lcom/android/phone/EditFdnContactScreen;I)I

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-set7(Lcom/android/phone/EditFdnContactScreen;I)I

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-set5(Lcom/android/phone/EditFdnContactScreen;I)I

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const/4 v3, 0x4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-set6(Lcom/android/phone/EditFdnContactScreen;I)I

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete: cursor.getShort(0)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get6(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete: cursor.getShort(1)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get12(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete: cursor.getShort(3)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onQueryComplete: cursor.getShort(4)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iput-object p3, v2, Lcom/android/phone/EditFdnContactScreen;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Name_MaxLEngth)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/EditFdnContactScreen;->-wrap5(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;)V

    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get8(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$1;-><init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;I)V

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get7(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get7(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$2;-><init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v2

    if-lez v2, :cond_3

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get9(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->-get10(Lcom/android/phone/EditFdnContactScreen;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v6

    :cond_2
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get9(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get9(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get9(Lcom/android/phone/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EditFdnContactScreen$QueryHandler$3;-><init>(Lcom/android/phone/EditFdnContactScreen$QueryHandler;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string/jumbo v3, "cursor doesn\'t have next item!"

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsRefreshingSIM in onQueryComplete() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v4}, Lcom/android/phone/EditFdnContactScreen;->-get5(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2, v6}, Lcom/android/phone/EditFdnContactScreen;->-set3(Lcom/android/phone/EditFdnContactScreen;Z)Z

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-get2(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-wrap1(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2}, Lcom/android/phone/EditFdnContactScreen;->-wrap7(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    const-string/jumbo v3, "onUpdateComplete"

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const-string/jumbo v0, "0"

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2, v4}, Lcom/android/phone/EditFdnContactScreen;->-wrap2(Lcom/android/phone/EditFdnContactScreen;Z)V

    if-gez p3, :cond_0

    const/4 v1, 0x0

    const/16 v2, -0x3eb

    if-ne p3, v2, :cond_1

    const-string/jumbo v0, "-1003"

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdateComplete : bSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bSegment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/EditFdnContactScreen;->-wrap4(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/EditFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-static {v2, v1, v0}, Lcom/android/phone/EditFdnContactScreen;->-wrap3(Lcom/android/phone/EditFdnContactScreen;ZLjava/lang/String;)V

    return-void

    :cond_1
    const/16 v2, -0x3fe

    if-ne p3, v2, :cond_2

    const-string/jumbo v0, "-1022"

    goto :goto_0

    :cond_2
    const/16 v2, -0x3fc

    if-ne p3, v2, :cond_3

    const-string/jumbo v0, "-1020"

    goto :goto_0

    :cond_3
    const/16 v2, -0x3ed

    if-ne p3, v2, :cond_0

    const-string/jumbo v0, "-1005"

    goto :goto_0
.end method
