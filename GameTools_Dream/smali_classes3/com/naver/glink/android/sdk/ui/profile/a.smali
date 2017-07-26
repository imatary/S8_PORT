.class public Lcom/naver/glink/android/sdk/ui/profile/a;
.super Ljava/lang/Object;
.source "NickNameHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naver/glink/android/sdk/ui/profile/a$a;
    }
.end annotation


# static fields
.field static final a:I = 0x14

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/naver/glink/android/sdk/api/request/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/naver/glink/android/sdk/api/request/Request",
            "<",
            "Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Lcom/naver/glink/android/sdk/ui/profile/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/naver/glink/android/sdk/ui/profile/a;->b:Ljava/util/Map;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/a;->b:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->available_nickname_message:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/a;->b:Ljava/util/Map;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->not_available_nickname_message:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/a;->b:Ljava/util/Map;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->already_exist_nickname_message:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/a;->b:Ljava/util/Map;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->exist_prohibit_word_nickname_message:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    return-void
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object v0
.end method

.method static synthetic a(Lcom/naver/glink/android/sdk/ui/profile/a;Lcom/naver/glink/android/sdk/api/request/Request;)Lcom/naver/glink/android/sdk/api/request/Request;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/naver/glink/android/sdk/R$string;->nickname_rule_message:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$string;->nickname_rule_global_message:I

    goto :goto_0
.end method

.method public static a()[Landroid/text/InputFilter;
    .locals 4

    const/16 v3, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Lcom/naver/glink/android/sdk/a/b;

    invoke-direct {v1, v3}, Lcom/naver/glink/android/sdk/a/b;-><init>(I)V

    aput-object v1, v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/naver/glink/android/sdk/ui/profile/a;)Lcom/naver/glink/android/sdk/ui/profile/a$a;
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/naver/glink/android/sdk/ui/profile/a;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isNeedJoinError()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/GlinkError;->isAgreeTermsError()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {p3}, Lcom/naver/glink/android/sdk/a/l;->b(Landroid/content/Context;)Lcom/naver/glink/android/sdk/a/l$a;

    move-result-object v0

    iget-object v0, v0, Lcom/naver/glink/android/sdk/a/l$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->joinRequest(Ljava/lang/String;Ljava/lang/String;Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/a$3;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/a$3;-><init>(Lcom/naver/glink/android/sdk/ui/profile/a;)V

    invoke-virtual {v0, p3, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    if-eqz p2, :cond_0

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->getError()Lcom/naver/glink/android/sdk/api/GlinkError;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->memberId:Ljava/lang/String;

    invoke-static {v0, p1, p3, p4}, Lcom/naver/glink/android/sdk/api/requests/Requests;->membersRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->showProgress(Z)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    new-instance v1, Lcom/naver/glink/android/sdk/ui/profile/a$2;

    invoke-direct {v1, p0}, Lcom/naver/glink/android/sdk/ui/profile/a$2;-><init>(Lcom/naver/glink/android/sdk/ui/profile/a;)V

    invoke-virtual {v0, p5, v1}, Lcom/naver/glink/android/sdk/api/request/Request;->execute(Landroid/content/Context;Lcom/naver/glink/android/sdk/api/request/RequestListener;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZLcom/naver/glink/android/sdk/api/Responses$MemberResponse;Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/api/request/Request;->cancel()V

    iput-object v3, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    invoke-static {p5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$color;->gray4:I

    invoke-interface {v0, v3, v1, v4, v2}, Lcom/naver/glink/android/sdk/ui/profile/a$a;->a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;Ljava/lang/String;ZI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p4, :cond_3

    iget-object v0, p4, Lcom/naver/glink/android/sdk/api/Responses$MemberResponse;->nickname:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    invoke-static {p5}, Lcom/naver/glink/android/sdk/ui/profile/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$color;->gray4:I

    invoke-interface {v0, v3, v1, v4, v2}, Lcom/naver/glink/android/sdk/ui/profile/a$a;->a(Lcom/naver/glink/android/sdk/api/Responses$AvailableResponse;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->e:Lcom/naver/glink/android/sdk/ui/profile/a$a;

    invoke-interface {v0}, Lcom/naver/glink/android/sdk/ui/profile/a$a;->a()V

    :cond_4
    invoke-static {p1}, Lcom/naver/glink/android/sdk/api/requests/Requests;->nicknameAvailableRequest(Ljava/lang/String;)Lcom/naver/glink/android/sdk/api/request/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->c:Lcom/naver/glink/android/sdk/api/request/Request;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/naver/glink/android/sdk/ui/profile/a$1;

    invoke-direct {v2, p0, v0, p5}, Lcom/naver/glink/android/sdk/ui/profile/a$1;-><init>(Lcom/naver/glink/android/sdk/ui/profile/a;Lcom/naver/glink/android/sdk/api/request/Request;Landroid/content/Context;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
