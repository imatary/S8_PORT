.class public abstract Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;
.source "PlugListFragmentView.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ListAdapter;

.field private final d:Landroid/os/Handler;

.field private final g:Landroid/widget/AdapterView$OnItemClickListener;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->d:Landroid/os/Handler;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$1;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->g:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$2;

    invoke-direct {v0, p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected b(II)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->empty_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->b:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->empty_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d_()V
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugFragmentView;->d_()V

    return-void
.end method

.method protected getEmptyContentsLayout()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->empty_contents_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->c:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->c:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
