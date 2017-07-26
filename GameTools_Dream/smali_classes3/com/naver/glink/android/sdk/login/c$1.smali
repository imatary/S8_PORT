.class Lcom/naver/glink/android/sdk/login/c$1;
.super Ljava/lang/Object;
.source "NeoIdLoginBuilder.java"

# interfaces
.implements Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/login/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/login/c;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/login/c;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/login/c$1;->a:Lcom/naver/glink/android/sdk/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggedIn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/naver/glink/android/sdk/login/c$1;->a:Lcom/naver/glink/android/sdk/login/c;

    invoke-static {v0, p1}, Lcom/naver/glink/android/sdk/login/c;->a(Lcom/naver/glink/android/sdk/login/c;Z)V

    return-void
.end method
