.class final Lcom/naver/glink/android/sdk/NaverIdLogin$1;
.super Ljava/lang/Object;
.source "NaverIdLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/NaverIdLogin;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$1;->b:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->NAVER:Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/NaverIdLogin$1;->b:Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;

    invoke-virtual {v0, v1, v2}, Lcom/naver/glink/android/sdk/login/LoginHelper$LoginType;->login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V

    return-void
.end method
