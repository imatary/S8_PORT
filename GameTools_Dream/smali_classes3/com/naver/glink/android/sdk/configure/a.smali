.class public Lcom/naver/glink/android/sdk/configure/a;
.super Lcom/naver/glink/android/sdk/model/BaseModel;
.source "SdkConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/configure/a$a;,
        Lcom/naver/glink/android/sdk/configure/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

.field public final c:Lcom/naver/glink/android/sdk/configure/b;

.field public final d:Lcom/naver/glink/android/sdk/configure/a$b;

.field public final e:Lcom/naver/glink/android/sdk/configure/a$b;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/configure/a$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/model/BaseModel;-><init>()V

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a$a;->b(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a$a;->c(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/b;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->c:Lcom/naver/glink/android/sdk/configure/b;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a$a;->d(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a$a;->e(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a$a;->f(Lcom/naver/glink/android/sdk/configure/a$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/configure/a$a;Lcom/naver/glink/android/sdk/configure/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/a;-><init>(Lcom/naver/glink/android/sdk/configure/a$a;)V

    return-void
.end method

.method public static a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a$a;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/configure/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;-><init>(Lcom/naver/glink/android/sdk/configure/a;Lcom/naver/glink/android/sdk/configure/a$1;)V

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/configure/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Lcom/naver/glink/android/sdk/configure/a;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/naver/glink/android/sdk/configure/a;->a(Lcom/naver/glink/android/sdk/configure/a;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/configure/a$b;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v4, v2, v3}, Lcom/naver/glink/android/sdk/configure/a$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/a$b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/configure/a$b;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v4, v2, v3}, Lcom/naver/glink/android/sdk/configure/a$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->b(Lcom/naver/glink/android/sdk/configure/a$b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-static {}, Lcom/naver/glink/android/sdk/configure/b;->a()Lcom/naver/glink/android/sdk/configure/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/configure/a$a;->a(Lcom/naver/glink/android/sdk/configure/b;)Lcom/naver/glink/android/sdk/configure/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/configure/a$a;->a()Lcom/naver/glink/android/sdk/configure/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/configure/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/naver/glink/android/sdk/api/request/RequestHelper;->getSystemLangCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "ko"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/a;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/configure/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/naver/glink/android/sdk/configure/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/configure/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ko"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/naver/glink/android/sdk/configure/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/a$b;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iget v0, v0, Lcom/naver/glink/android/sdk/configure/a$b;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
