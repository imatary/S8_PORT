.class public Lcom/naver/glink/android/sdk/configure/a$a;
.super Ljava/lang/Object;
.source "SdkConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/configure/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

.field private c:Lcom/naver/glink/android/sdk/configure/b;

.field private d:Lcom/naver/glink/android/sdk/configure/a$b;

.field private e:Lcom/naver/glink/android/sdk/configure/a$b;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/naver/glink/android/sdk/configure/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;->REAL:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/naver/glink/android/sdk/configure/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/configure/a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/configure/a;->c:Lcom/naver/glink/android/sdk/configure/b;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->c:Lcom/naver/glink/android/sdk/configure/b;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/configure/a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    iget-object v0, p1, Lcom/naver/glink/android/sdk/configure/a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    invoke-static {p1}, Lcom/naver/glink/android/sdk/configure/a;->b(Lcom/naver/glink/android/sdk/configure/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/naver/glink/android/sdk/configure/a;Lcom/naver/glink/android/sdk/configure/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naver/glink/android/sdk/configure/a$a;-><init>(Lcom/naver/glink/android/sdk/configure/a;)V

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/configure/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    return-object v0
.end method

.method static synthetic c(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->c:Lcom/naver/glink/android/sdk/configure/b;

    return-object v0
.end method

.method static synthetic d(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/a$b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    return-object v0
.end method

.method static synthetic e(Lcom/naver/glink/android/sdk/configure/a$a;)Lcom/naver/glink/android/sdk/configure/a$b;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    return-object v0
.end method

.method static synthetic f(Lcom/naver/glink/android/sdk/configure/a$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/configure/a$a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;)Lcom/naver/glink/android/sdk/configure/a$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/a$a;->b:Lcom/naver/glink/android/sdk/configure/SdkBuildPhase;

    return-object p0
.end method

.method public a(Lcom/naver/glink/android/sdk/configure/a$b;)Lcom/naver/glink/android/sdk/configure/a$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/a$a;->d:Lcom/naver/glink/android/sdk/configure/a$b;

    return-object p0
.end method

.method public a(Lcom/naver/glink/android/sdk/configure/b;)Lcom/naver/glink/android/sdk/configure/a$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/a$a;->c:Lcom/naver/glink/android/sdk/configure/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/naver/glink/android/sdk/configure/a$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/naver/glink/android/sdk/configure/a;
    .locals 2

    new-instance v0, Lcom/naver/glink/android/sdk/configure/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naver/glink/android/sdk/configure/a;-><init>(Lcom/naver/glink/android/sdk/configure/a$a;Lcom/naver/glink/android/sdk/configure/a$1;)V

    return-object v0
.end method

.method public b(Lcom/naver/glink/android/sdk/configure/a$b;)Lcom/naver/glink/android/sdk/configure/a$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/configure/a$a;->e:Lcom/naver/glink/android/sdk/configure/a$b;

    return-object p0
.end method
