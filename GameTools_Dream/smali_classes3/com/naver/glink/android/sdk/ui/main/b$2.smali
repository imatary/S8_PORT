.class final Lcom/naver/glink/android/sdk/ui/main/b$2;
.super Ljava/lang/Object;
.source "MainHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/main/b;->a(Lcom/naver/glink/android/sdk/StartTo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/naver/glink/android/sdk/StartTo;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/StartTo;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/main/b$2;->a:Lcom/naver/glink/android/sdk/StartTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/main/b;->i()Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/main/b$2;->a:Lcom/naver/glink/android/sdk/StartTo;

    invoke-virtual {v0, v1}, Lcom/naver/glink/android/sdk/ui/main/MainFragmentView;->a(Lcom/naver/glink/android/sdk/StartTo;)V

    :cond_0
    return-void
.end method
