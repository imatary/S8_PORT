.class Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;
.super Landroid/widget/BaseAdapter;
.source "WriteFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# static fields
.field static final a:I = 0xc8

.field static final b:I = 0x0

.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x3


# instance fields
.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x4

    new-array v6, v0, [Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->attachment1:I

    sget v2, Lcom/naver/glink/android/sdk/R$id;->thumbnail1:I

    sget v3, Lcom/naver/glink/android/sdk/R$id;->delete_attachment1:I

    sget v4, Lcom/naver/glink/android/sdk/R$id;->video_icon1:I

    sget v5, Lcom/naver/glink/android/sdk/R$id;->video_gradient1:I

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;-><init>(IIIII)V

    aput-object v0, v6, v7

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->attachment2:I

    sget v2, Lcom/naver/glink/android/sdk/R$id;->thumbnail2:I

    sget v3, Lcom/naver/glink/android/sdk/R$id;->delete_attachment2:I

    sget v4, Lcom/naver/glink/android/sdk/R$id;->video_icon2:I

    sget v5, Lcom/naver/glink/android/sdk/R$id;->video_gradient2:I

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;-><init>(IIIII)V

    aput-object v0, v6, v8

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->attachment3:I

    sget v2, Lcom/naver/glink/android/sdk/R$id;->thumbnail3:I

    sget v3, Lcom/naver/glink/android/sdk/R$id;->delete_attachment3:I

    sget v4, Lcom/naver/glink/android/sdk/R$id;->video_icon3:I

    sget v5, Lcom/naver/glink/android/sdk/R$id;->video_gradient3:I

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;-><init>(IIIII)V

    aput-object v0, v6, v9

    new-instance v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->attachment4:I

    sget v2, Lcom/naver/glink/android/sdk/R$id;->thumbnail4:I

    sget v3, Lcom/naver/glink/android/sdk/R$id;->delete_attachment4:I

    sget v4, Lcom/naver/glink/android/sdk/R$id;->video_icon4:I

    sget v5, Lcom/naver/glink/android/sdk/R$id;->video_gradient4:I

    invoke-direct/range {v0 .. v5}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;-><init>(IIIII)V

    aput-object v0, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->f:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_write_header:I

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move v1, v2

    :goto_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->menus_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/naver/glink/android/sdk/R$string;->select_menu_button:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v4, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$1;

    invoke-direct {v4, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$1;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->subject:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v4, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Lcom/naver/glink/android/sdk/a/b;

    const/16 v4, 0xc8

    invoke-direct {v2, v4}, Lcom/naver/glink/android/sdk/a/b;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->d(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$2;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-object p1

    :cond_1
    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v4}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v5}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/naver/glink/android/sdk/api/Responses$WriteArticleResponse;->getMenu(I)Lcom/naver/glink/android/sdk/model/Menu;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/naver/glink/android/sdk/model/Menu;->getMenuName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move v1, v3

    goto/16 :goto_0
.end method

.method private a(Lcom/naver/glink/android/sdk/ui/write/model/Text;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_write_text:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    sget v0, Lcom/naver/glink/android/sdk/R$id;->content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v2, v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->b(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/naver/glink/android/sdk/ui/write/model/Text;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->e(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$3;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-object p2

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/glink/android/sdk/ui/write/model/Attachment;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$layout;->item_write_attachments:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->n()Lcom/naver/glink/android/sdk/configure/c;

    move-result-object v3

    iget v3, v3, Lcom/naver/glink/android/sdk/configure/c;->b:I

    mul-int/lit8 v3, v3, 0x4d

    div-int v2, v3, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->f()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/naver/glink/android/sdk/ui/write/model/Attachment;

    :goto_1
    invoke-direct {p0, p2, v0, v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->a(Landroid/view/View;Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v0, v0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method private a(Landroid/view/View;Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    instance-of v1, p3, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    if-eqz v1, :cond_3

    move-object v1, p3

    check-cast v1, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/ImageAttachment;->i()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/naver/glink/android/sdk/ui/write/a;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :goto_1
    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;

    invoke-direct {v1, p0, p3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d$4;-><init>(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;Lcom/naver/glink/android/sdk/ui/write/model/Attachment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_write_nothumbnail_pic:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/n;->a(Landroid/widget/ImageView;)Lcom/naver/glink/android/sdk/a/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_1

    :cond_3
    instance-of v1, p3, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->e()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    new-instance v3, Lcom/bumptech/glide/signature/StringSignature;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/VideoAttachment;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_img_write_nothumbnail_mov:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/naver/glink/android/sdk/a/n;->a(Landroid/widget/ImageView;)Lcom/naver/glink/android/sdk/a/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget v0, p2, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$b;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 view type \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->e()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->h(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->c(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 viewType \uc785\ub2c8\ub2e4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->h:Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;

    invoke-static {v0, p2, p3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;->a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/ui/write/model/Text;

    invoke-direct {p0, v0, p2, p3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->a(Lcom/naver/glink/android/sdk/ui/write/model/Text;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2, p3}, Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$d;->a(Ljava/util/List;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
