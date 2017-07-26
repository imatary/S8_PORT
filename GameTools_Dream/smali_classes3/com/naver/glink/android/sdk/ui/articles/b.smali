.class public Lcom/naver/glink/android/sdk/ui/articles/b;
.super Ljava/lang/Object;
.source "ArticlesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 10

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\s"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-static {v3, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    :goto_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    const/16 v9, 0x21

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    invoke-static {v3, v6, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_1
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/naver/glink/android/sdk/ui/articles/b;->b(I)V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/b$1;

    invoke-direct {v0}, Lcom/naver/glink/android/sdk/ui/articles/b$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_btn_flwrite:I

    invoke-virtual {v0, p0, v1}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/view/View;I)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/articles/b$2;

    invoke-direct {v0, p1}, Lcom/naver/glink/android/sdk/ui/articles/b$2;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static b(I)V
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    :cond_0
    invoke-static {p0, v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;->a(II)Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle$a;->a()Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;

    move-result-object v0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(Lcom/naver/glink/android/sdk/ui/write/model/WritingArticle;)V

    return-void
.end method
