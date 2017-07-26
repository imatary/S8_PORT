.class abstract Lcom/naver/glink/android/sdk/login/a$a;
.super Ljava/lang/Object;
.source "LoginBuilders.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/login/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

.field protected d:Z


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/naver/glink/android/sdk/login/a$a;->d:Z

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/a$a;->a:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$a;
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/a$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/login/a$a;->c:Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;

    return-object p0
.end method

.method public a(Z)Lcom/naver/glink/android/sdk/login/a$b;
    .locals 0

    iput-boolean p1, p0, Lcom/naver/glink/android/sdk/login/a$a;->d:Z

    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/login/a$a;->a(Ljava/lang/String;Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView$a;)Lcom/naver/glink/android/sdk/login/a$a;

    move-result-object v0

    return-object v0
.end method
