.class Lcom/android/phone/operator/usa/AssistedDialingList$3;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 14

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v8, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get4(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get3(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get3(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    add-int/lit8 v4, v3, 0x1

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget v8, v8, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget v8, v8, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget-object v9, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget v9, v9, Lcom/android/phone/operator/usa/AssistedDialingList;->textlength:I

    const/4 v10, 0x0

    invoke-static {v8, v1, v10, v9}, Lcom/android/phone/operator/usa/AssistedDialingList;->-wrap0(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get4(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get5(Lcom/android/phone/operator/usa/AssistedDialingList;)[I

    move-result-object v8

    add-int/lit8 v6, v5, 0x1

    aput v4, v8, v5

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/AssistedDialingList;->-set0(Lcom/android/phone/operator/usa/AssistedDialingList;Z)Z

    move v5, v6

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get6(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget-object v11, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v11}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get4(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/util/ArrayList;

    move-result-object v11

    const v12, 0x7f040013

    const v13, 0x7f100042

    invoke-direct {v9, v10, v12, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get6(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get6(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get11(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get13(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/TextView;

    move-result-object v8

    const v9, 0x7f0d07dc

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const/4 v8, 0x1

    return v8

    :cond_3
    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get6(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get11(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/AssistedDialingList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get12(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get12(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$3;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v2, 0x7f100044

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/AssistedDialingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x1

    return v1
.end method
