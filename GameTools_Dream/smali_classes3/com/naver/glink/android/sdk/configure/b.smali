.class public Lcom/naver/glink/android/sdk/configure/b;
.super Ljava/lang/Object;
.source "SdkHosts.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_glink:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->a:Ljava/lang/String;

    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_attach:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->b:Ljava/lang/String;

    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_article:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_plug:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/naver/glink/android/sdk/configure/b;->d:Ljava/lang/String;

    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_upphoto:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->e:Ljava/lang/String;

    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_phinf:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->f:Ljava/lang/String;

    sget v0, Lcom/naver/glink/android/sdk/R$string;->hosts_playlog:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/b;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method static a()Lcom/naver/glink/android/sdk/configure/b;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/naver/glink/android/sdk/configure/b;

    invoke-direct {v0, v1, v1}, Lcom/naver/glink/android/sdk/configure/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Lcom/naver/glink/android/sdk/configure/b;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/configure/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/configure/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/b;
    .locals 1

    new-instance v0, Lcom/naver/glink/android/sdk/configure/b;

    invoke-direct {v0, p0, p1}, Lcom/naver/glink/android/sdk/configure/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v0
.end method
