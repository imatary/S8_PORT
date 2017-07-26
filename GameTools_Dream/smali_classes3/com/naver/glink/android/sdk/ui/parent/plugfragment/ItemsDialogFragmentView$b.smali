.class Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;
.super Landroid/widget/ArrayAdapter;
.source "ItemsDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 view type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_items_dialog_section:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2

    :pswitch_1
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_items_dialog_item:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/naver/glink/android/sdk/configure/d;->e(Landroid/view/View;)V

    :cond_1
    sget v0, Lcom/naver/glink/android/sdk/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->a:Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->b(Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;)I

    move-result v0

    if-ne v0, p1, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    :goto_2
    sget v0, Lcom/naver/glink/android/sdk/R$id;->divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_3

    const/16 v3, 0x8

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/naver/glink/android/sdk/ui/parent/plugfragment/ItemsDialogFragmentView$b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
