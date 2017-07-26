.class final Lcom/naver/glink/android/sdk/c$5;
.super Ljava/lang/Object;
.source "G.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/c;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/naver/glink/android/sdk/ui/floating/c;->a()Lcom/naver/glink/android/sdk/ui/floating/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/floating/c;->b()V

    return-void
.end method
