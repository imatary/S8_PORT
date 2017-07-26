.class public Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;
.super Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;
.source "ProfileArticlesFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;,
        Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:Ljava/lang/String; = "-1"

.field public static final c:I = -0x1

.field public static final d:Ljava/lang/String; = "W"

.field public static final g:Ljava/lang/String; = "C"

.field public static final h:Ljava/lang/String; = "L"

.field private static final i:I = 0xa

.field private static final j:I = 0x5

.field private static final k:Ljava/lang/String; = "com.naver.glink.OTHERPROFILE_ID"

.field private static final l:Ljava/lang/String; = "com.naver.glink.ISWRITER"

.field private static final m:Ljava/lang/String; = "com.naver.glink.WRITE_COUNT"

.field private static final n:Ljava/lang/String; = "com.naver.glink.COMMENT_COUNT"

.field private static final o:Ljava/lang/String; = "com.naver.glink.LIKE_COUNT"

.field private static final p:Ljava/lang/String; = "com.naver.glink.TYPE"


# instance fields
.field private A:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

.field private q:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->s:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->t:I

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->t:I

    return v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->t:I

    return p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->B:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->A:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object p1
.end method

.method public static a(Landroid/content/Context;IIIZLjava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;
    .locals 7

    const-string/jumbo v1, "-1"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Landroid/content/Context;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "com.naver.glink.OTHERPROFILE_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.naver.glink.ISWRITER"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.naver.glink.WRITE_COUNT"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "com.naver.glink.COMMENT_COUNT"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "com.naver.glink.LIKE_COUNT"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "com.naver.glink.TYPE"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private a(Lcom/naver/glink/android/sdk/model/Article;)Ljava/lang/String;
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v2, "W"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    iget v0, p1, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->s:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->B:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->B:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;

    iget-object v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->nextOffset:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/model/Article;->likedItDateTime:Ljava/lang/String;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v4, "W"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "C"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "L"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget-boolean v0, v0, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->isLastPage:Z

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget-boolean v2, v2, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->lastPage:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->metadata:Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;

    iget v2, v2, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse$MetaData;->nextOffset:I

    if-ne v2, v3, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_1

    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->articles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->s:I

    return v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->s:I

    return p1
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/api/Responses$MemberArticlesResponse;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->u:I

    return p1
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->e()V

    return-void
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->v:I

    return p1
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I
    .locals 2

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->s:I

    return v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;I)I
    .locals 0

    iput p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->w:I

    return p1
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->A:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "lastArticleId"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/naver/glink/android/sdk/model/Article;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Article;

    invoke-direct {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->a(Lcom/naver/glink/android/sdk/model/Article;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getPageString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->e()V

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->x:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lcom/naver/glink/android/sdk/api/requests/Requests;->otherMemberArticleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->A:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->A:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;

    invoke-direct {v2, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$4;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->x:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lcom/naver/glink/android/sdk/api/requests/GRequests;->memberArticleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->A:Lcom/naver/glink/android/sdk/api/request/Request;

    goto :goto_1
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->y:Ljava/lang/String;

    return-object v0
.end method

.method private getPageString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "lastArticleId"

    :goto_1
    return-object v0

    :sswitch_0
    const-string/jumbo v2, "W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "lastArticleId"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "page"

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/naver/glink/android/sdk/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "offset"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "lastLikedItDateTime"

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_2
        0x57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic h(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->u:I

    return v0
.end method

.method static synthetic i(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->v:I

    return v0
.end method

.method static synthetic j(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)I
    .locals 1

    iget v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->w:I

    return v0
.end method

.method static synthetic k(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->z:Z

    return v0
.end method

.method static synthetic l(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->A:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/naver/glink/android/sdk/R$layout;->fragment_profile:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.OTHERPROFILE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.ISWRITER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->z:Z

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.WRITE_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->u:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.COMMENT_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->v:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.LIKE_COUNT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->w:I

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.naver.glink.TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/parent/PlugListFragmentView;->a(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v3, [I

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v2

    iget v2, v2, Lcom/naver/glink/android/sdk/configure/d;->a:I

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->q:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$1;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    new-instance v0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->b()V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    invoke-virtual {v0, v4, v3, v3}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(ZZZ)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/naver/glink/android/sdk/model/Article;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/glink/android/sdk/model/Article;

    iget v0, v0, Lcom/naver/glink/android/sdk/model/Article;->articleId:I

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/tabs/b;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/article/b$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->g()Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c()V

    :cond_0
    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/ui/write/WriteFragmentView$a;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/tabs/b;->g()Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    move-result-object v0

    sget-object v1, Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;->PROFILE:Lcom/naver/glink/android/sdk/ui/tabs/Tab$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView;->r:Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileArticlesFragmentView$b;->a(ZZZ)V

    :cond_0
    return-void
.end method
