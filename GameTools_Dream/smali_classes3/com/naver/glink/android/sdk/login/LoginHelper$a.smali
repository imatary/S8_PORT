.class interface abstract Lcom/naver/glink/android/sdk/login/LoginHelper$a;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naver/glink/android/sdk/login/LoginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract builder(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)Lcom/naver/glink/android/sdk/login/a$b;
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isLogin(Landroid/content/Context;)Z
.end method

.method public abstract isNeedRefreshToken(Landroid/content/Context;)Z
.end method

.method public abstract login(Landroid/content/Context;Lcom/naver/glink/android/sdk/Glink$OnLoggedInListener;)V
.end method

.method public abstract logout(Landroid/content/Context;)V
.end method
